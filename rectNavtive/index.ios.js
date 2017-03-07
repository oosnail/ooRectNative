'use strict';
import React from 'react';
import {
    AppRegistry,
    StyleSheet,
    Text,
    View,
    Image
} from 'react-native';

class RNHighScores extends React.Component {
    render() {
        console.log(this.props["scores"]);
        var contents = this.props["scores"].map(
                                                score => <Text key={score.name}>{score.name}:{score.value}{"\n"}</Text>
                                                );
        RNHighScores => Bananas;
        return (
                <View style={styles.container}>
                <Text style={styles.highScoresTitle}>
                2048 High Scores!
                </Text>
                <Text style={styles.scores}>
                {contents}
                </Text>
                </View>
                );
    }
}

class Bananas extends React.Component {
  render() {
    let pic = {
      uri: 'https://upload.wikimedia.org/wikipedia/commons/d/de/Bananavarieties.jpg'
    };
      
    return (
            <Image source={{uri: 'https://facebook.github.io/react/img/logo_og.png'}}
            style={{width: 400, height: 400}} />
            );
  }
}

const styles = StyleSheet.create({
                                 container: {
                                 flex: 1,
                                 justifyContent: 'center',
                                 alignItems: 'center',
                                 backgroundColor: '#FFFFFF',
                                 },
                                 highScoresTitle: {
                                 fontSize: 20,
                                 textAlign: 'center',
                                 margin: 10,
                                 },
                                 scores: {
                                 textAlign: 'center',
                                 color: '#333333',
                                 marginBottom: 5,
                                 },
                                 });

// Module name
AppRegistry.registerComponent('aa', () => Bananas);
